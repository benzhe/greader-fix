.class public Lrm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public e:Lnk;

.field public f:Ljava/lang/String;

.field public g:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Lnk;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrm;->e:Lnk;

    .line 3
    iput-object p2, p0, Lrm;->f:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lrm;->g:Landroidx/work/WorkerParameters$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrm;->e:Lnk;

    .line 2
    iget-object v0, v0, Lnk;->f:Lhk;

    .line 3
    iget-object v1, p0, Lrm;->f:Ljava/lang/String;

    iget-object v2, p0, Lrm;->g:Landroidx/work/WorkerParameters$a;

    invoke-virtual {v0, v1, v2}, Lhk;->b(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z

    return-void
.end method
