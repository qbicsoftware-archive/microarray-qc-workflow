FROM nfcore/base
MAINTAINER Timo Lucas <timo-niklas.lucas@student.uni-tuebingen.de>
LABEL authors="timo-niklas.lucas@student.uni-tuebingen.de" \
    description="Docker image containing all requirements for microarray-qc-workflow pipeline"

COPY environment.yml /
RUN conda env update -n root -f /environment.yml && conda clean -a
