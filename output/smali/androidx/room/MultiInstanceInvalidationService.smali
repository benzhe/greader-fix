.class public Landroidx/room/MultiInstanceInvalidationService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public e:I

.field public final f:Ln4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lig;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljg;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/room/MultiInstanceInvalidationService;->e:I

    .line 3
    new-instance v0, Ln4;

    const/16 v1, 0xa

    .line 4
    invoke-direct {v0, v1}, Ln4;-><init>(I)V

    .line 5
    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->f:Ln4;

    .line 6
    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$a;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$a;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->g:Landroid/os/RemoteCallbackList;

    .line 7
    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$b;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$b;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->h:Ljg;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationService;->h:Ljg;

    return-object p1
.end method
