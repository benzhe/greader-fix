.class public Lf3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lf3;


# direct methods
.method public constructor <init>(Lf3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf3$b;->e:Lf3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf3$b;->e:Lf3;

    invoke-virtual {v0}, Lf3;->b()V

    return-void
.end method
