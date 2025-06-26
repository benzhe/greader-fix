.class public Li7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li7;->b(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Li7$c;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li7$c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li7$a;->e:Li7$c;

    iput-object p2, p0, Li7$a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li7$a;->e:Li7$c;

    iget-object v1, p0, Li7$a;->f:Ljava/lang/Object;

    iput-object v1, v0, Li7$c;->e:Ljava/lang/Object;

    return-void
.end method
