.class public final Lb58;
.super Lz48;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field public final f:Ljava/lang/String;

.field public final transient g:Lk78;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "[A-Za-z][A-Za-z0-9~/._+-]+"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb58;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lk78;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz48;-><init>()V

    .line 2
    iput-object p1, p0, Lb58;->f:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lb58;->g:Lk78;

    return-void
.end method

.method public static O(Ljava/lang/String;Z)Lb58;
    .locals 3

    const-string v0, "zoneId"

    .line 1
    invoke-static {p0, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    sget-object v0, Lb58;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-static {p0, v1}, Ln78;->a(Ljava/lang/String;Z)Lk78;

    move-result-object v0
    :try_end_0
    .catch Ll78; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GMT0"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object p1, La58;->j:La58;

    invoke-virtual {p1}, La58;->L()Lk78;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    :goto_0
    new-instance p1, Lb58;

    invoke-direct {p1, p0, v0}, Lb58;-><init>(Ljava/lang/String;Lk78;)V

    return-object p1

    .line 7
    :cond_1
    throw v1

    .line 8
    :cond_2
    new-instance p1, Ll48;

    const-string v0, "Invalid ID for region-based ZoneId, invalid format: "

    invoke-static {v0, p0}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lw48;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lw48;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public K()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb58;->f:Ljava/lang/String;

    return-object v0
.end method

.method public L()Lk78;
    .locals 2

    .line 1
    iget-object v0, p0, Lb58;->g:Lk78;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb58;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ln78;->a(Ljava/lang/String;Z)Lk78;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public N(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 1
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 2
    iget-object v0, p0, Lb58;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
