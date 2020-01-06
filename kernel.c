void kmain(void) {
	const char *str = "Hello From Kernel";
	char *vidptr = (char*)0xb8000; //start of video memory is at 0xb8000 in protected mode
	unsigned int i = 0;
	unsigned int j = 0;

	//clear screen loop
	while(j < 80 * 25 * 2) { 
		vidptr[j] = ' '; 
		vidptr[j+1] = 0x07; //attribute-byte
		j = j + 2;
	}

	j = 0;

	while(str[j] != '\0'){
		vidptr[i] = str[j];
		vidptr[i+1] = 0x07; //attribute-byte
		++j;
		i = i + 2;
	}
	return;
}
