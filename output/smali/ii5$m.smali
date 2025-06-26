.class public final Lii5$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lii5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lxl5;

.field public final g:Lul5;

.field public final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxl5;Lul5;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lii5$m;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lii5$m;->f:Lxl5;

    .line 4
    iput-object p3, p0, Lii5$m;->g:Lul5;

    .line 5
    iput-boolean p4, p0, Lii5$m;->h:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lii5$m;->e:Landroid/content/Context;

    invoke-static {v0}, Lvh5;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lah5;->a:Lah5;

    const-string v1, "Attempting to send crash report at time of crash..."

    invoke-virtual {v0, v1}, Lah5;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lii5$m;->g:Lul5;

    iget-object v1, p0, Lii5$m;->f:Lxl5;

    iget-boolean v2, p0, Lii5$m;->h:Z

    invoke-virtual {v0, v1, v2}, Lul5;->a(Lxl5;Z)Z

    return-void
.end method
