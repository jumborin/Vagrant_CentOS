#!/bin/bash

# Git�̃��O���e�L�X�g�t�@�C���ɏo�͂���B
git log > GitLog.log

# �ϐ���ݒ�
COMMIT_MESSAGE="commit "
COMMIT_TEMP_FILE=commit.tmp
AUTHOR_MESSAGE="Author: "
AUTHOR_TEMP_FILE=Author.tmp
DATE_MESSAGE="Date:   "
DATE_TEMP_FILE=Dates.tmp
COMMENT_MESSAGE="    "
COMMENT_TEMP_FILE=Comment.tmp
MERGE_TEMP_FILE=merge.tmp
MERGE_TEMP_FILE2=merge2.tmp
RESULT_FILE=result.csv

# ���O�𕪐�
cat GitLog.log | grep "$COMMIT_MESSAGE" > $COMMIT_TEMP_FILE
cat GitLog.log | grep "$AUTHOR_MESSAGE" > $AUTHOR_TEMP_FILE
cat GitLog.log | grep "$DATE_MESSAGE" > $DATE_TEMP_FILE
cat GitLog.log | grep "$COMMENT_MESSAGE" > $COMMENT_TEMP_FILE


paste -d"," $COMMIT_TEMP_FILE $AUTHOR_TEMP_FILE > $MERGE_TEMP_FILE
paste -d"," $MERGE_TEMP_FILE $DATE_TEMP_FILE > $MERGE_TEMP_FILE2
paste -d"," $MERGE_TEMP_FILE2 $COMMENT_TEMP_FILE > $RESULT_FILE


# �ꎞ�t�@�C�����폜
rm $COMMIT_TEMP_FILE
rm $AUTHOR_TEMP_FILE
rm $DATE_TEMP_FILE
rm $COMMENT_TEMP_FILE
rm $MERGE_TEMP_FILE
rm $MERGE_TEMP_FILE2

