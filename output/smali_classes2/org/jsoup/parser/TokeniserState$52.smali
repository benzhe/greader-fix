.class public final enum Lorg/jsoup/parser/TokeniserState$52;
.super Lorg/jsoup/parser/TokeniserState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method public read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createDoctypePending()V

    .line 3
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    if-eqz p2, :cond_2

    const/16 v0, 0x20

    if-eq p2, v0, :cond_3

    const v0, 0xffff

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_3

    const/16 v0, 0xa

    if-eq p2, v0, :cond_3

    const/16 v0, 0xc

    if-eq p2, v0, :cond_3

    const/16 v0, 0xd

    if-eq p2, v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createDoctypePending()V

    .line 6
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    iget-object v0, v0, Lorg/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 9
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createDoctypePending()V

    .line 10
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 11
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 12
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 14
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createDoctypePending()V

    .line 15
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    iget-object p2, p2, Lorg/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :cond_3
    :goto_0
    return-void
.end method
