.class public final synthetic Lw96;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ly96;

.field public final f:Z


# direct methods
.method public constructor <init>(Ly96;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw96;->e:Ly96;

    iput-boolean p2, p0, Lw96;->f:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lw96;->e:Ly96;

    iget-boolean v1, p0, Lw96;->f:Z

    .line 1
    sget-object v2, Ly96;->m:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v1}, Ly96;->b(Z)V

    return-void
.end method
