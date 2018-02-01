from sqlalchemy import Column, DateTime, Integer, String, Boolean, ForeignKey
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
Base = declarative_base()

class Post(Base):
    __tablename__ = 'post'
    id            = Column(Integer, primary_key=True)
    title         = Column(String)
    category      = Column(String)
    debate        = Column(String)
    nickname      = Column(String)
    comments      = relationship("Comment")


class Comment(Base):
    __tablename__ = 'comment'
    id            = Column(Integer, primary_key=True)
    date          = Column(String)
    comment       = Column(String)
    post          = Column(Integer,ForeignKey("post.id"))
    
class User(Base):
    __tablename__ = 'user'
    id            = Column(Integer, primary_key=True)
    username      = Column(String)
    age           = Column(Integer)
    gender        = Column(Boolean)
    password      = Column(String)
    