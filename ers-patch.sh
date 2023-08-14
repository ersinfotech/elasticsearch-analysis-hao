
echo 准备应用hao-ers分词补丁

sed -i "s/String cleanedSen = clean(sentence);/String cleanedSen = clean(sentence);\n        sentence = cleanedSen;/" src/main/java/com/itenlee/search/analysis/core/Dictionary.java

sed -i "s/if (vertex.length > 1 \&\& isIndexMode)/if (vertex.length >= 1 \&\& isIndexMode)/" src/main/java/com/itenlee/search/analysis/core/DijkstraSeg.java

sed -i "s/if (enableSingleWord || subTerm.getEnd() - subTerm.getOffset() != 1) {/if (dictionary.getMetaWords().contains(subTerm.getText())) {\n                                termList.add(subTerm);\n                            } else if (enableSingleWord || subTerm.getEnd() - subTerm.getOffset() != 1) {/" src/main/java/com/itenlee/search/analysis/core/DijkstraSeg.java

sed -i "s#<entry key=\"remoteFreqDict\">.*</entry>#<entry key=\"remoteFreqDict\">http://api.ersinfotech.com/helper-api/dic</entry>#" config/HaoAnalyzer.cfg.xml

echo 应用hao-ers分词补丁完成
