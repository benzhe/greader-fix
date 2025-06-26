.class public Ld57$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld57$b;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ld57$b$c;

.field public final synthetic f:Ld57$b;


# direct methods
.method public constructor <init>(Ld57$b;Ld57$b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld57$b$a;->f:Ld57$b;

    iput-object p2, p0, Ld57$b$a;->e:Ld57$b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld57$b$a;->f:Ld57$b;

    .line 2
    iget-object v0, v0, Ld57$b;->c:Landroid/net/ConnectivityManager;

    .line 3
    iget-object v1, p0, Ld57$b$a;->e:Ld57$b$c;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
