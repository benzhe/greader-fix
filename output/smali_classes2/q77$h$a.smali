.class public final Lq77$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq77$h;->a(Lc47$f;)La67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic e:Lq77$h;


# direct methods
.method public constructor <init>(Lq77$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$h$a;->e:Lq77$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq77$h$a;->e:Lq77$h;

    iget-object v0, v0, Lq77$h;->a:Lq77;

    invoke-virtual {v0}, Lq77;->s()V

    return-void
.end method
