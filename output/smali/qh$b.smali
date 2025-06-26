.class public Lqh$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Lyh;

.field public d:Lmi;

.field public e:Lqh;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lqh;Lmi;Lyh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqh$b;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lqh$b;->b:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lqh$b;->c:Lyh;

    .line 5
    iput-object p4, p0, Lqh$b;->d:Lmi;

    .line 6
    iput-object p3, p0, Lqh$b;->e:Lqh;

    return-void
.end method
