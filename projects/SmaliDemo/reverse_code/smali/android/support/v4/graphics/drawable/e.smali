.class Landroid/support/v4/graphics/drawable/e;
.super Landroid/support/v4/graphics/drawable/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/e$a;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/e;->d()V

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/d$a;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Landroid/support/v4/graphics/drawable/d$a;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/d;-><init>(Landroid/support/v4/graphics/drawable/d$a;Landroid/content/res/Resources;)V

    .line 50
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/e;->d()V

    .line 51
    return-void
.end method

.method private d()V
    .locals 3

    .line 160
    sget-object v0, Landroid/support/v4/graphics/drawable/e;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 162
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "isProjected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/graphics/drawable/e;->h:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "WrappedDrawableApi21"

    const-string v2, "Failed to retrieve Drawable#isProjected() method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected b()Z
    .locals 3

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_2

    .line 115
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    .line 116
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 121
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    return v1
.end method

.method c()Landroid/support/v4/graphics/drawable/d$a;
    .locals 3

    .line 143
    new-instance v0, Landroid/support/v4/graphics/drawable/e$a;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/d;->e:Landroid/support/v4/graphics/drawable/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/graphics/drawable/e$a;-><init>(Landroid/support/v4/graphics/drawable/d$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .line 71
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 65
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 66
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 55
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 56
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 60
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 61
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/d;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 107
    const/4 v0, 0x1

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 85
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/d;->setTint(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 90
    :goto_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 76
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/d;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 81
    :goto_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 94
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/d;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 99
    :goto_0
    return-void
.end method
