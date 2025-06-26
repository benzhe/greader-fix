.class public final Lqi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/io/IOException;

.field public final synthetic f:Lmi3;


# direct methods
.method public constructor <init>(Lmi3;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqi3;->f:Lmi3;

    iput-object p2, p0, Lqi3;->e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lqi3;->f:Lmi3;

    .line 2
    iget-object v0, v0, Lmi3;->i:Lti3;

    .line 3
    iget-object v1, p0, Lqi3;->e:Ljava/io/IOException;

    check-cast v0, Lcv0;

    .line 4
    iget-object v2, v0, Lcv0;->o:Lmv0;

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, v0, Lcv0;->j:Lfu0;

    iget-boolean v0, v0, Lfu0;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "onLoadException"

    .line 6
    invoke-interface {v2, v0, v1}, Lmv0;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string v0, "onLoadError"

    .line 7
    invoke-interface {v2, v0, v1}, Lmv0;->d(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method
