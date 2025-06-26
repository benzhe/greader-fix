.class public final Lwt4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Lxu4;


# direct methods
.method public constructor <init>(Lxu4;J)V
    .locals 0

    iput-object p1, p0, Lwt4;->f:Lxu4;

    iput-wide p2, p0, Lwt4;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lwt4;->f:Lxu4;

    iget-wide v1, p0, Lwt4;->e:J

    .line 1
    invoke-virtual {v0, v1, v2}, Lxu4;->l(J)V

    return-void
.end method
