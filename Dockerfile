FROM nfcore/base
LABEL authors="Project author name (use a comma to separate multiple names)." \
      description="Docker image containing all requirements for nf-core/lncpipe pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-lncpipe-1.0dev/bin:$PATH
