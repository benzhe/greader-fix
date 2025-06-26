.class public Lcom/google/mlkit/nl/languageid/LanguageIdRegistrar;
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
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsf5<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lfj4;

    const-class v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    sget-object v2, Lfj4;->i:Lsf5;

    sget-object v3, Ljj4;->a:Lsf5;

    sget-object v4, Ldj4;->b:Lsf5;

    sget-object v5, Lbj4;->c:Lsf5;

    .line 2
    invoke-static {v1}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v6

    const-class v7, Landroid/content/Context;

    .line 3
    new-instance v8, Lig5;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v7, v9, v10}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v6, v8}, Lsf5$b;->a(Lig5;)Lsf5$b;

    .line 5
    new-instance v7, Lig5;

    invoke-direct {v7, v0, v9, v10}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v6, v7}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v7, Lei6;->a:Lwf5;

    .line 7
    invoke-virtual {v6, v7}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 8
    invoke-virtual {v6}, Lsf5$b;->b()Lsf5;

    move-result-object v6

    const-class v7, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;

    .line 9
    invoke-static {v7}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v7

    .line 10
    new-instance v8, Lig5;

    invoke-direct {v8, v0, v9, v10}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 11
    invoke-virtual {v7, v8}, Lsf5$b;->a(Lig5;)Lsf5$b;

    .line 12
    new-instance v0, Lig5;

    invoke-direct {v0, v1, v9, v10}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 13
    invoke-virtual {v7, v0}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v0, Leh6;

    .line 14
    new-instance v1, Lig5;

    invoke-direct {v1, v0, v9, v10}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 15
    invoke-virtual {v7, v1}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v0, Ldi6;->a:Lwf5;

    .line 16
    invoke-virtual {v7, v0}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 17
    invoke-virtual {v7}, Lsf5$b;->b()Lsf5;

    move-result-object v0

    .line 18
    sget-object v1, Lpo4;->f:Lvo4;

    const/4 v1, 0x6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v2, v7, v10

    aput-object v3, v7, v9

    const/4 v2, 0x2

    aput-object v4, v7, v2

    const/4 v2, 0x3

    aput-object v5, v7, v2

    const/4 v2, 0x4

    aput-object v6, v7, v2

    const/4 v2, 0x5

    aput-object v0, v7, v2

    :goto_0
    if-ge v10, v1, :cond_1

    .line 19
    aget-object v0, v7, v10

    if-eqz v0, :cond_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x14

    const-string v2, "at index "

    invoke-static {v1, v2, v10}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    new-instance v0, Lto4;

    invoke-direct {v0, v7, v1}, Lto4;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method
