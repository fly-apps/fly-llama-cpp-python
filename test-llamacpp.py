#!/usr/bin/env python3
import json
from llama_cpp import Llama

llm = Llama.from_pretrained(
    repo_id="Qwen/Qwen2-0.5B-Instruct-GGUF",
    filename="qwen2-0_5b-instruct-q2_k.gguf",
)

response = llm.create_chat_completion(
    messages = [
        {
            "role": "user",
            "content": "What is the capital of France?"
        }
    ]
)

print(json.dumps(response, indent=2))

