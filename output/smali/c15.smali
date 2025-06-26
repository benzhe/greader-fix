.class public final Lc15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/content/ComponentName;

.field public final synthetic f:Lg15;


# direct methods
.method public constructor <init>(Lg15;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lc15;->f:Lg15;

    iput-object p2, p0, Lc15;->e:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc15;->f:Lg15;

    iget-object v0, v0, Lg15;->c:Lh15;

    iget-object v1, p0, Lc15;->e:Landroid/content/ComponentName;

    .line 1
    invoke-static {v0, v1}, Lh15;->q(Lh15;Landroid/content/ComponentName;)V

    return-void
.end method
