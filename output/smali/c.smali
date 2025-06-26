.class public final Lc;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final f:Lc;

.field public static final g:Lc;


# instance fields
.field public final synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc;-><init>(I)V

    sput-object v0, Lc;->f:Lc;

    new-instance v0, Lc;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc;-><init>(I)V

    sput-object v0, Lc;->g:Lc;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lc;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lc;->e:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    return-void
.end method
