.class public Lxb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lxb;


# direct methods
.method public constructor <init>(Lxb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxb$b;->e:Lxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lxb$b;->e:Lxb;

    invoke-virtual {v0}, Lxb;->U()Z

    return-void
.end method
