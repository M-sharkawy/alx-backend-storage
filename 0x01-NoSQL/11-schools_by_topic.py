#!/usr/bin/env python3
"""model returns the list of school having a specific topic"""


def schools_by_topic(mongo_collection, topic: str):
    """
    returns the list of school having a specific topic
    """
    return (mongo_collection.find({"topic": topic}))
