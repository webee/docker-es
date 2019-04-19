ARG version=7.0.0
FROM elasticsearch:${version}

ARG version
RUN yes|elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${version}/elasticsearch-analysis-ik-${version}.zip
RUN yes|elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v${version}/elasticsearch-analysis-pinyin-${version}.zip
RUN yes|elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-stconvert/releases/download/v${version}/elasticsearch-analysis-stconvert-${version}.zip
