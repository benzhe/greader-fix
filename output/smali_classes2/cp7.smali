.class public abstract Lcp7;
.super Lnk7;
.source "SourceFile"

# interfaces
.implements Lqk7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcp7$a;
    }
.end annotation


# static fields
.field public static final f:Lcp7$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcp7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcp7$a;-><init>(Lgm7;)V

    sput-object v0, Lcp7;->f:Lcp7$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lqk7$a;->a:Lqk7$a;

    invoke-direct {p0, v0}, Lnk7;-><init>(Lrk7$b;)V

    return-void
.end method


# virtual methods
.method public a(Lpk7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpk7<",
            "*>;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lhp7;

    invoke-virtual {p1}, Lhp7;->h()Lpo7;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Lpo7;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Llp7;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Llp7;->k()V

    .line 4
    :cond_0
    sget-object v0, Lfq7;->e:Lfq7;

    .line 5
    iput-object v0, p1, Lpo7;->_parentHandle:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final b(Lpk7;)Lpk7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lpk7<",
            "-TT;>;)",
            "Lpk7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lhp7;

    invoke-direct {v0, p0, p1}, Lhp7;-><init>(Lcp7;Lpk7;)V

    return-object v0
.end method

.method public c(Lrk7$b;)Lrk7$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lrk7$a;",
            ">(",
            "Lrk7$b<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, p1, Lok7;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3
    check-cast p1, Lok7;

    invoke-virtual {p0}, Lnk7;->getKey()Lrk7$b;

    move-result-object v1

    .line 4
    invoke-static {v1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1

    .line 5
    iget-object v0, p1, Lok7;->a:Lrk7$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    const-string v0, "element"

    .line 6
    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Lok7;->b:Lpl7;

    invoke-interface {p1, p0}, Lpl7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrk7$a;

    .line 8
    instance-of v0, p1, Lrk7$a;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p1

    goto :goto_2

    .line 9
    :cond_3
    sget-object v0, Lqk7$a;->a:Lqk7$a;

    if-ne v0, p1, :cond_4

    move-object v2, p0

    :cond_4
    :goto_2
    return-object v2
.end method

.method public abstract t(Lrk7;Ljava/lang/Runnable;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ln56;->L0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(Lrk7;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
