FROM quorumengineering/qubernetes

COPY 7nodes /qubernetes/7nodes
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
