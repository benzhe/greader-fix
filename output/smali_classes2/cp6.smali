.class public Lcp6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcp6;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcp6;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcp6;->a:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcp6;->b:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, ";"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 14
    array-length v0, p1

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v1, :cond_1

    .line 15
    aget-object v0, p1, v6

    iput-object v0, p0, Lcp6;->a:Ljava/lang/String;

    .line 16
    aget-object v0, p1, v5

    iput-object v0, p0, Lcp6;->b:Ljava/lang/String;

    .line 17
    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    const/4 v0, 0x5

    .line 20
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    .line 21
    :cond_1
    array-length v0, p1

    if-ne v0, v3, :cond_2

    .line 22
    aget-object v0, p1, v6

    iput-object v0, p0, Lcp6;->a:Ljava/lang/String;

    .line 23
    aget-object v0, p1, v5

    iput-object v0, p0, Lcp6;->b:Ljava/lang/String;

    .line 24
    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    .line 26
    :cond_2
    array-length v0, p1

    if-ne v0, v4, :cond_3

    .line 27
    aget-object v0, p1, v6

    iput-object v0, p0, Lcp6;->a:Ljava/lang/String;

    .line 28
    aget-object p1, p1, v5

    iput-object p1, p0, Lcp6;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcp6;->a:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcp6;->b:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcp6;->a:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcp6;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcp6;->a:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcp6;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Media(source="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcp6;->a:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
