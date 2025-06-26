.class public final synthetic Lmq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcq0$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmq0;->a:Landroid/content/Context;

    iput-object p2, p0, Lmq0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lny0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmq0;->a:Landroid/content/Context;

    iget-object v1, p0, Lmq0;->b:Ljava/lang/String;

    .line 2
    new-instance v2, Ly20;

    invoke-direct {v2, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p1, v2, v1, v0}, Lny0;->t4(Lx20;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
