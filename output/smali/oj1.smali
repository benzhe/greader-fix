.class public final synthetic Loj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lkj1;

.field public final f:Lxl1;


# direct methods
.method public constructor <init>(Lkj1;Lxl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loj1;->e:Lkj1;

    iput-object p2, p0, Loj1;->f:Lxl1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Loj1;->e:Lkj1;

    iget-object v1, p0, Loj1;->f:Lxl1;

    .line 1
    invoke-virtual {v0, v1}, Lkj1;->h(Lxl1;)V

    return-void
.end method
