.class public Lj67$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj67$d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lj67$c;

.field public final synthetic f:Lj67$d;


# direct methods
.method public constructor <init>(Lj67$d;Lj67$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj67$d$b;->f:Lj67$d;

    iput-object p2, p0, Lj67$d$b;->e:Lj67$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lj67$d$b;->f:Lj67$d;

    iget-object v0, v0, Lj67$d;->f:Lj67;

    iget-object v1, p0, Lj67$d$b;->e:Lj67$c;

    .line 2
    iput-object v1, v0, Lj67;->l:Lj67$c;

    .line 3
    iget-wide v1, v0, Lj67;->i:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4
    iget-object v0, v0, Lj67;->k:Lpd5;

    .line 5
    invoke-virtual {v0}, Lpd5;->b()Lpd5;

    invoke-virtual {v0}, Lpd5;->c()Lpd5;

    :cond_0
    return-void
.end method
