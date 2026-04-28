---
title: "天气查询Agent - 基于LangChain的ReAct实战"
date: 2026-04-15
draft: false
tags: ["LangChain", "ReAct", "Python", "Agent"]
categories: ["Projects"]
description: "基于LangChain的天气查询Agent实战项目，学习ReAct循环、工具调用和记忆管理的核心概念"
---

## 项目背景

这是我在学习Agent开发过程中的实战项目，通过实现一个天气查询Agent来掌握LangChain的核心用法。

主要目标是理解：
- Agent如何调用外部工具
- ReAct（Reasoning + Acting）决策循环
- 短期记忆如何管理对话上下文

## 技术方案

### 核心架构

```
用户输入 → Agent(LLM) → 决策：
  ├─ 需要查天气 → 调用天气API → 返回结果
  └─ 直接回答 → LLM生成回复
```

### 关键实现

**1. ReAct循环**

```python
while not done:
    # Thought: 分析是否需要调用工具
    thought = llm.think(state)
    
    # Action: 执行工具或直接回复
    if need_tool:
        result = tool.execute()
        state.add_result(result)
    else:
        return thought
```

**2. 工具定义**

```python
@tool
def get_weather(city: str) -> str:
    """查询城市天气"""
    # 调用天气API
    return f"{city}今天晴，25°C"
```

**3. 记忆管理**

使用ConversationBufferMemory存储对话历史，支持多轮对话上下文。

## 遇到的挑战

1. **Token消耗问题**：多轮对话后上下文越来越长
2. **工具调用格式错误**：LLM生成的参数格式不对
3. **死循环**：Agent反复调用同一工具

## 解决方案

- 使用滑动窗口压缩历史记忆
- 用Pydantic验证工具输入参数
- 设置最大循环次数限制

## 项目成果

掌握了Agent开发的核心流程，为后续学习多工具Agent和记忆系统打下基础。这个项目也成为我面试Agent岗位的Demo展示。

## 技术栈

- Python
- LangChain
- ReAct
- Requests（天气API）

