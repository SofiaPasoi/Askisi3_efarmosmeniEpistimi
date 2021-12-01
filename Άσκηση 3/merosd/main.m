##clear
[A,map]=imread('/home/sofiapasoi/Desktop/ask3/lena_color.gif');
Abw=map(A+1);
#imshow(Abw)
scalef = max(max(Abw)) * 255;
ColumnA = Abw(:);
Abwn = floor(ColumnA * scalef); % υπολογισμός ακέραιας τιμής
ml = length(Abwn);
ml = 60 % Αρχικά θα επεξεργαστούμε μόνο ένα μικρό μέρος της εικόνας
key='000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f';
CT = {}; % Θα χρησιμοποιηθεί ένα νέος τύπος πίνακα, το cell array
Pt = {}; % Κενό cell array
RxAbwn = []; % Κενό διάνυσμα
RxAbw = []; % Κενό διάνυσμα
image=[];
disp(size(image));
disp('Encrypting');

for i = 1:ml, % Διατρέχουμε το διάνυσμα της εικόνας
  #i
  #Abwn(i)
  b = dec2hex(Abwn(i),32); % Κωδικοποίηση της τιμής σε δεκαεξαδικό
  #b
  CT{i} = Cipher(key,b); % Κρυπτογράφηση της τιμής και αποθήκευση στο
  #CT{i}
end




#disp(size(Abwn));


disp('Decrypting');


for i = 1:ml, % Διατρέχουμε το διάνυσμα της εικόνας
  #i
  #CT{i}
  Pt{i} = InvCipher(key,CT{i}); % Αποκρυπτογράφηση της τιμής
  #Pt{i}
  RxAbwn(i) = hex2dec(Pt{i});  % Αποκωδικοποίηση από δεκαεξαδικό σε
  #RxAbwn(i)
end


RxAbw = RxAbwn / scalef;
disp(RxAbwn);
#disp(ColumnA);
k=0;
for i = 1:512, % Διατρέχουμε το διάνυσμα της εικόνας
  for j= 1:512,
    
    image(j,i)=ColumnA(j+k);
  
end
k=k+512;
end
imshow(image);