.class public abstract Lh18;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg18;


# direct methods
.method public constructor <init>(Lg18;)V
    .locals 1

    const-string v0, "level"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh18;->a:Lg18;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lg18;->e:Lg18;

    invoke-virtual {p0, v0, p1}, Lh18;->b(Lg18;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lg18;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh18;->a:Lg18;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2}, Lh18;->d(Lg18;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final c(Lg18;)Z
    .locals 1

    const-string v0, "lvl"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lh18;->a:Lg18;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract d(Lg18;Ljava/lang/String;)V
.end method
