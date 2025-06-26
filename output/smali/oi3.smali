.class public final Loi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lmi3;


# direct methods
.method public constructor <init>(Lmi3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loi3;->e:Lmi3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Loi3;->e:Lmi3;

    .line 2
    iget-boolean v1, v0, Lmi3;->K:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lmi3;->t:Lwi3;

    .line 4
    invoke-interface {v1, v0}, Lwi3;->e(Ljj3;)V

    :cond_0
    return-void
.end method
