.class public final Lnc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lic0;


# direct methods
.method public constructor <init>(Lic0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnc0;->e:Lic0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnc0;->e:Lic0;

    .line 2
    iget-object v1, v0, Lic0;->a:Lbc0;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lic0;->a:Lbc0;

    invoke-virtual {v0}, Li00;->disconnect()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    :goto_0
    return-void
.end method
