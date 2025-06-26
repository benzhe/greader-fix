.class public Lvi5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvi5;->b(Lkm5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lkm5;

.field public final synthetic f:Lvi5;


# direct methods
.method public constructor <init>(Lvi5;Lkm5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvi5$a;->f:Lvi5;

    iput-object p2, p0, Lvi5$a;->e:Lkm5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lvi5$a;->f:Lvi5;

    iget-object v1, p0, Lvi5$a;->e:Lkm5;

    invoke-static {v0, v1}, Lvi5;->a(Lvi5;Lkm5;)Le45;

    return-void
.end method
