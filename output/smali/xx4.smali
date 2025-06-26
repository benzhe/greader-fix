.class public final Lxx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Ln25;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lky4;


# direct methods
.method public constructor <init>(Lky4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxx4;->h:Lky4;

    iput-object p2, p0, Lxx4;->e:Ljava/lang/String;

    iput-object p3, p0, Lxx4;->f:Ljava/lang/String;

    iput-object p4, p0, Lxx4;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lxx4;->h:Lky4;

    .line 1
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->l()V

    iget-object v0, p0, Lxx4;->h:Lky4;

    .line 3
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 4
    invoke-virtual {v0}, Lj25;->L()Lgs4;

    move-result-object v0

    iget-object v1, p0, Lxx4;->e:Ljava/lang/String;

    iget-object v2, p0, Lxx4;->f:Ljava/lang/String;

    iget-object v3, p0, Lxx4;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lgs4;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
