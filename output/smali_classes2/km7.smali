.class public abstract Lkm7;
.super Lmm7;
.source "SourceFile"

# interfaces
.implements Lkn7;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmm7;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lmm7;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lmm7;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public computeReflected()Lgn7;
    .locals 1

    .line 1
    sget-object v0, Lsm7;->a:Ltm7;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lom7;->getReflected()Lln7;

    move-result-object v0

    check-cast v0, Lkn7;

    invoke-interface {v0}, Lmn7;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGetter()Lln7$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkm7;->getGetter()Lmn7$a;

    move-result-object v0

    return-object v0
.end method

.method public getGetter()Lmn7$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lom7;->getReflected()Lln7;

    move-result-object v0

    check-cast v0, Lkn7;

    invoke-interface {v0}, Lmn7;->getGetter()Lmn7$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSetter()Ljn7;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkm7;->getSetter()Lkn7$a;

    move-result-object v0

    return-object v0
.end method

.method public getSetter()Lkn7$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lom7;->getReflected()Lln7;

    move-result-object v0

    check-cast v0, Lkn7;

    invoke-interface {v0}, Lkn7;->getSetter()Lkn7$a;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Lmn7;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
