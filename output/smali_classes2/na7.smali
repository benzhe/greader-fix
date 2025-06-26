.class public final Lna7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lbt7;

.field public static final e:Lbt7;

.field public static final f:Lbt7;

.field public static final g:Lbt7;

.field public static final h:Lbt7;


# instance fields
.field public final a:Lbt7;

.field public final b:Lbt7;

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, ":status"

    .line 1
    invoke-static {v0}, Lbt7;->l(Ljava/lang/String;)Lbt7;

    move-result-object v0

    sput-object v0, Lna7;->d:Lbt7;

    const-string v0, ":method"

    .line 2
    invoke-static {v0}, Lbt7;->l(Ljava/lang/String;)Lbt7;

    move-result-object v0

    sput-object v0, Lna7;->e:Lbt7;

    const-string v0, ":path"

    .line 3
    invoke-static {v0}, Lbt7;->l(Ljava/lang/String;)Lbt7;

    move-result-object v0

    sput-object v0, Lna7;->f:Lbt7;

    const-string v0, ":scheme"

    .line 4
    invoke-static {v0}, Lbt7;->l(Ljava/lang/String;)Lbt7;

    move-result-object v0

    sput-object v0, Lna7;->g:Lbt7;

    const-string v0, ":authority"

    .line 5
    invoke-static {v0}, Lbt7;->l(Ljava/lang/String;)Lbt7;

    move-result-object v0

    sput-object v0, Lna7;->h:Lbt7;

    const-string v0, ":host"

    .line 6
    invoke-static {v0}, Lbt7;->l(Ljava/lang/String;)Lbt7;

    const-string v0, ":version"

    .line 7
    invoke-static {v0}, Lbt7;->l(Ljava/lang/String;)Lbt7;

    return-void
.end method

.method public constructor <init>(Lbt7;Lbt7;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lna7;->a:Lbt7;

    .line 5
    iput-object p2, p0, Lna7;->b:Lbt7;

    .line 6
    invoke-virtual {p1}, Lbt7;->t()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lbt7;->t()I

    move-result p2

    add-int/2addr p1, p2

    .line 7
    iput p1, p0, Lna7;->c:I

    return-void
.end method

.method public constructor <init>(Lbt7;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p2}, Lbt7;->l(Ljava/lang/String;)Lbt7;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lna7;-><init>(Lbt7;Lbt7;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lbt7;->l(Ljava/lang/String;)Lbt7;

    move-result-object p1

    invoke-static {p2}, Lbt7;->l(Ljava/lang/String;)Lbt7;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lna7;-><init>(Lbt7;Lbt7;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lna7;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lna7;

    .line 3
    iget-object v0, p0, Lna7;->a:Lbt7;

    iget-object v2, p1, Lna7;->a:Lbt7;

    invoke-virtual {v0, v2}, Lbt7;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lna7;->b:Lbt7;

    iget-object p1, p1, Lna7;->b:Lbt7;

    .line 4
    invoke-virtual {v0, p1}, Lbt7;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lna7;->a:Lbt7;

    invoke-virtual {v0}, Lbt7;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lna7;->b:Lbt7;

    invoke-virtual {v1}, Lbt7;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lna7;->a:Lbt7;

    invoke-virtual {v1}, Lbt7;->O()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lna7;->b:Lbt7;

    invoke-virtual {v1}, Lbt7;->O()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
