.class public Lj57$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj57;->g(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lj57;


# direct methods
.method public constructor <init>(Lj57;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj57$e;->f:Lj57;

    iput p2, p0, Lj57$e;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj57$e;->f:Lj57;

    .line 2
    iget-object v0, v0, Lj57;->e:Ld87$b;

    .line 3
    iget v1, p0, Lj57$e;->e:I

    invoke-interface {v0, v1}, Ld87$b;->g(I)V

    return-void
.end method
