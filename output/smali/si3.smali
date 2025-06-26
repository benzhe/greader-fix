.class public final Lsi3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lig3;

.field public final b:Lkg3;

.field public c:Lig3;


# direct methods
.method public constructor <init>([Lig3;Lkg3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsi3;->a:[Lig3;

    .line 3
    iput-object p2, p0, Lsi3;->b:Lkg3;

    return-void
.end method


# virtual methods
.method public final a(Lgg3;Landroid/net/Uri;)Lig3;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsi3;->c:Lig3;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lsi3;->a:[Lig3;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    :try_start_0
    invoke-interface {v4, p1}, Lig3;->e(Lgg3;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    iput-object v4, p0, Lsi3;->c:Lig3;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    check-cast p1, Leg3;

    .line 6
    iput v2, p1, Leg3;->e:I

    goto :goto_2

    .line 7
    :cond_1
    move-object v4, p1

    check-cast v4, Leg3;

    .line 8
    iput v2, v4, Leg3;->e:I

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 9
    check-cast p1, Leg3;

    .line 10
    iput v2, p1, Leg3;->e:I

    .line 11
    throw p2

    .line 12
    :catch_0
    move-object v4, p1

    check-cast v4, Leg3;

    .line 13
    iput v2, v4, Leg3;->e:I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_2
    :goto_2
    iget-object p1, p0, Lsi3;->c:Lig3;

    if-nez p1, :cond_5

    .line 15
    new-instance p1, Lmj3;

    iget-object v0, p0, Lsi3;->a:[Lig3;

    .line 16
    sget v1, Lel3;->a:I

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 19
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    const-string v3, ", "

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 22
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    .line 23
    invoke-static {v0, v1}, Ljo;->x(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "None of the available extractors ("

    const-string v3, ") could read the stream."

    invoke-static {v1, v2, v0, v3}, Ljo;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lmj3;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1

    .line 24
    :cond_5
    iget-object p2, p0, Lsi3;->b:Lkg3;

    invoke-interface {p1, p2}, Lig3;->c(Lkg3;)V

    .line 25
    iget-object p1, p0, Lsi3;->c:Lig3;

    return-object p1
.end method
