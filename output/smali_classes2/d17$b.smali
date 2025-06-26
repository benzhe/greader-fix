.class public Ld17$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld17;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ld17;


# direct methods
.method public constructor <init>(Ld17;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld17$b;->e:Ld17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld17$b;->e:Ld17;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld17;->r(I)V

    return-void
.end method
