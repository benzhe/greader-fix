.class public Lj57$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj57;->h(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/Throwable;

.field public final synthetic f:Lj57;


# direct methods
.method public constructor <init>(Lj57;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj57$g;->f:Lj57;

    iput-object p2, p0, Lj57$g;->e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj57$g;->f:Lj57;

    .line 2
    iget-object v0, v0, Lj57;->e:Ld87$b;

    .line 3
    iget-object v1, p0, Lj57$g;->e:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ld87$b;->h(Ljava/lang/Throwable;)V

    return-void
.end method
