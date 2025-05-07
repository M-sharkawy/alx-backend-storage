#!/usr/bin/env python3
"""model changes all topics of a school document based on the name"""
from typing import List


def update_topics(mongo_collection, name: str, topics: List[str]):
    """
    changes all topics of a school document based on the name
    """
    filter = {"name": name}
    update = {"$set": {"topics": topics}}
    mongo_collection.update_many(filter, update)
