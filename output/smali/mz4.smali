.class public final Lmz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/Boolean;

.field public final synthetic f:Lsz4;


# direct methods
.method public constructor <init>(Lsz4;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lmz4;->f:Lsz4;

    iput-object p2, p0, Lmz4;->e:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lmz4;->f:Lsz4;

    iget-object v1, p0, Lmz4;->e:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 1
    invoke-virtual {v0, v1, v2}, Lsz4;->u(Ljava/lang/Boolean;Z)V

    return-void
.end method
