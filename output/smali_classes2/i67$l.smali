.class public Li67$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li67;->f(Lx47;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lx47;

.field public final synthetic f:Li67;


# direct methods
.method public constructor <init>(Li67;Lx47;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li67$l;->f:Li67;

    iput-object p2, p0, Li67$l;->e:Lx47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li67$l;->f:Li67;

    .line 2
    iget-object v0, v0, Li67;->c:Ly57;

    .line 3
    iget-object v1, p0, Li67$l;->e:Lx47;

    invoke-interface {v0, v1}, Ly57;->f(Lx47;)V

    return-void
.end method
