.class public Lpk6$a;
.super Lqi6$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpk6;->z()Lqi6$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final e:Lpk6$c;

.field public f:Lqi6$f;

.field public final synthetic g:Lpk6;


# direct methods
.method public constructor <init>(Lpk6;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lpk6$a;->g:Lpk6;

    invoke-direct {p0}, Lqi6$b;-><init>()V

    .line 2
    new-instance v0, Lpk6$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpk6$c;-><init>(Lqi6;Lpk6$a;)V

    iput-object v0, p0, Lpk6$a;->e:Lpk6$c;

    .line 3
    invoke-virtual {p0}, Lpk6$a;->a()Lqi6$f;

    move-result-object p1

    iput-object p1, p0, Lpk6$a;->f:Lqi6$f;

    return-void
.end method


# virtual methods
.method public final a()Lqi6$f;
    .locals 2

    .line 1
    iget-object v0, p0, Lpk6$a;->e:Lpk6$c;

    invoke-virtual {v0}, Lpk6$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpk6$a;->e:Lpk6$c;

    invoke-virtual {v0}, Lpk6$c;->a()Lqi6$g;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lqi6$a;

    invoke-direct {v1, v0}, Lqi6$a;-><init>(Lqi6;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public b()B
    .locals 2

    .line 1
    iget-object v0, p0, Lpk6$a;->f:Lqi6$f;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lqi6$f;->b()B

    move-result v0

    .line 3
    iget-object v1, p0, Lpk6$a;->f:Lqi6$f;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lpk6$a;->a()Lqi6$f;

    move-result-object v1

    iput-object v1, p0, Lpk6$a;->f:Lqi6$f;

    :cond_0
    return v0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lpk6$a;->f:Lqi6$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
