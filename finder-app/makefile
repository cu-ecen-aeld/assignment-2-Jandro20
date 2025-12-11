CROSS_COMPILE=

CC=$(CROSS_COMPILE)gcc

OUTPUT_DIR=.

OBJ = writer.o

$(OUTPUT_DIR)/%.o: %.c
	$(CC) -c -o $@ $<

writer: $(OBJ)
	$(CC) -o $@ $^

.PHONY: clean

clean:
	rm -f $(OUTPUT_DIR)/*.o writer