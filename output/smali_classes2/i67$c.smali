.class public Li67$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li67;->n(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Li67;


# direct methods
.method public constructor <init>(Li67;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Li67$c;->f:Li67;

    iput-boolean p2, p0, Li67$c;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li67$c;->f:Li67;

    .line 2
    iget-object v0, v0, Li67;->c:Ly57;

    .line 3
    iget-boolean v1, p0, Li67$c;->e:Z

    invoke-interface {v0, v1}, Ly57;->n(Z)V

    return-void
.end method
