.class public Ljb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljb;


# direct methods
.method public constructor <init>(Ljb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljb$b;->e:Ljb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljb$b;->e:Ljb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljb;->w(I)V

    return-void
.end method
