.class public final Lon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lvn;

.field public final synthetic f:Lpn;


# direct methods
.method public constructor <init>(Lpn;Lvn;)V
    .locals 0

    iput-object p1, p0, Lon;->f:Lpn;

    iput-object p2, p0, Lon;->e:Lvn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lon;->f:Lpn;

    iget-object v0, v0, Lpn;->g:Lln;

    iget-object v1, p0, Lon;->e:Lvn;

    .line 1
    iget v2, v1, Lvn;->b:I

    .line 2
    iget-object v1, v1, Lvn;->c:Ljava/lang/String;

    .line 3
    new-instance v3, Lin;

    invoke-direct {v3}, Lin;-><init>()V

    .line 4
    iput v2, v3, Lin;->a:I

    .line 5
    iput-object v1, v3, Lin;->b:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lon;->e:Lvn;

    .line 7
    iget-object v1, v1, Lvn;->a:Ljava/util/List;

    .line 8
    invoke-interface {v0, v3, v1}, Lln;->a(Lin;Ljava/util/List;)V

    return-void
.end method
