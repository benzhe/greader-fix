.class public Li67$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li67;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Li67;


# direct methods
.method public constructor <init>(Li67;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Li67$a;->f:Li67;

    iput p2, p0, Li67$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li67$a;->f:Li67;

    .line 2
    iget-object v0, v0, Li67;->c:Ly57;

    .line 3
    iget v1, p0, Li67$a;->e:I

    invoke-interface {v0, v1}, Lb97;->b(I)V

    return-void
.end method
