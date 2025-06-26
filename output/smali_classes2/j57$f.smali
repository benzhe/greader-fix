.class public Lj57$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj57;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lj57;


# direct methods
.method public constructor <init>(Lj57;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj57$f;->f:Lj57;

    iput-boolean p2, p0, Lj57$f;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj57$f;->f:Lj57;

    .line 2
    iget-object v0, v0, Lj57;->e:Ld87$b;

    .line 3
    iget-boolean v1, p0, Lj57$f;->e:Z

    invoke-interface {v0, v1}, Ld87$b;->d(Z)V

    return-void
.end method
