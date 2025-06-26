.class public final synthetic Lgq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcq0$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgq0;->a:Ljava/lang/String;

    iput-object p2, p0, Lgq0;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lny0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lgq0;->a:Ljava/lang/String;

    iget-object v1, p0, Lgq0;->b:Landroid/os/Bundle;

    const-string v2, "am"

    .line 2
    invoke-interface {p1, v2, v0, v1}, Lny0;->W(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
