FROM jupyter/scipy-notebook

RUN pip install skl2onnx
RUN pip install pandas
RUN pip install numpy
RUN pip install -U scikit-learn
RUN pip install -U matplotlib
RUN pip install onnxruntime

COPY zmays_trained_model.onnx ./zmays_trained_model.onnx
COPY test_set_ZM_set1.csv ./test_set.csv
COPY pred_script.py ./pred_script.py
