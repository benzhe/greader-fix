.class public Lcom/google/mlkit/common/internal/CommonComponentRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxf5;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsf5<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lbh6;

    sget-object v1, Lbh4;->b:Lsf5;

    sget-object v2, Lkh6;->b:Lsf5;

    sget-object v3, Lfh4;->a:Lsf5;

    sget-object v4, Lzg4;->a:Lsf5;

    sget-object v5, Lxg4;->a:Lsf5;

    const-class v6, Lmh6;

    .line 2
    invoke-static {v6}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v6

    const-class v7, Lhh6;

    .line 3
    new-instance v8, Lig5;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v7, v9, v10}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v6, v8}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v7, Lvg6;->a:Lwf5;

    .line 5
    invoke-virtual {v6, v7}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 6
    invoke-virtual {v6}, Lsf5$b;->b()Lsf5;

    move-result-object v6

    const-class v7, Lih6;

    .line 7
    invoke-static {v7}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v7

    sget-object v8, Lug6;->a:Lwf5;

    .line 8
    invoke-virtual {v7, v8}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 9
    invoke-virtual {v7}, Lsf5$b;->b()Lsf5;

    move-result-object v7

    const-class v8, Lah6;

    .line 10
    invoke-static {v8}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v8

    const-class v11, Lah6$a;

    .line 11
    new-instance v12, Lig5;

    const/4 v13, 0x2

    invoke-direct {v12, v11, v13, v10}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 12
    invoke-virtual {v8, v12}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v11, Lxg6;->a:Lwf5;

    .line 13
    invoke-virtual {v8, v11}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 14
    invoke-virtual {v8}, Lsf5$b;->b()Lsf5;

    move-result-object v8

    const-class v11, Leh6;

    .line 15
    invoke-static {v11}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v11

    const-class v12, Lih6;

    .line 16
    new-instance v14, Lig5;

    invoke-direct {v14, v12, v9, v9}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 17
    invoke-virtual {v11, v14}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v12, Lwg6;->a:Lwf5;

    .line 18
    invoke-virtual {v11, v12}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 19
    invoke-virtual {v11}, Lsf5$b;->b()Lsf5;

    move-result-object v11

    .line 20
    invoke-static {v0}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v12

    sget-object v14, Lzg6;->a:Lwf5;

    invoke-virtual {v12, v14}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    invoke-virtual {v12}, Lsf5$b;->b()Lsf5;

    move-result-object v12

    const-class v14, Lch6;

    .line 21
    invoke-static {v14}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v14

    .line 22
    new-instance v15, Lig5;

    invoke-direct {v15, v0, v9, v10}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 23
    invoke-virtual {v14, v15}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v0, Lbh4;

    .line 24
    new-instance v15, Lig5;

    invoke-direct {v15, v0, v9, v10}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 25
    invoke-virtual {v14, v15}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v0, Lyg6;->a:Lwf5;

    .line 26
    invoke-virtual {v14, v0}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 27
    invoke-virtual {v14}, Lsf5$b;->b()Lsf5;

    move-result-object v0

    .line 28
    sget-object v14, Ljg4;->f:Lng4;

    const/16 v14, 0xb

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v1, v15, v10

    aput-object v2, v15, v9

    aput-object v3, v15, v13

    const/4 v1, 0x3

    aput-object v4, v15, v1

    const/4 v1, 0x4

    aput-object v5, v15, v1

    const/4 v1, 0x5

    aput-object v6, v15, v1

    const/4 v1, 0x6

    aput-object v7, v15, v1

    const/4 v1, 0x7

    aput-object v8, v15, v1

    const/16 v1, 0x8

    aput-object v11, v15, v1

    const/16 v1, 0x9

    aput-object v12, v15, v1

    const/16 v1, 0xa

    aput-object v0, v15, v1

    :goto_0
    if-ge v10, v14, :cond_1

    .line 29
    aget-object v0, v15, v10

    if-eqz v0, :cond_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x14

    const-string v2, "at index "

    invoke-static {v1, v2, v10}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    new-instance v0, Llg4;

    invoke-direct {v0, v15, v14}, Llg4;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method
