.class public Lq77$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final synthetic e:Lq77;


# direct methods
.method public constructor <init>(Lq77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$i;->e:Lq77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq77$i;->e:Lq77;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lq77;->Y:Lb57$c;

    .line 3
    iget-object v1, v0, Lq77;->n:Lb57;

    invoke-virtual {v1}, Lb57;->d()V

    .line 4
    iget-boolean v1, v0, Lq77;->x:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v0, Lq77;->w:Ll47;

    invoke-virtual {v0}, Ll47;->b()V

    :cond_0
    return-void
.end method
